package com.rational.utils;

public class Formatter {

    public static String parseSubtitle(String subtitle){
        String name = "";
        String[] split = subtitle.toUpperCase().split(" ");
        for(String word : split){
            name = name + "<span class=spell-name-head>" + word.substring(0, 1) + "</span>" +
                    "<span class=spell-name-tail>"+ word.substring(1, word.length()) + "</span> ";
        }
        return name;
    }

    public static String formatParagraph(String paragraph){
        if(paragraph.contains("*tab")){
            while(paragraph.contains("*tab")){
                int startIndex = paragraph.indexOf("*tab")+4;
                int endIndex = paragraph.indexOf("*", startIndex + 1);
                String padding = paragraph.substring(startIndex, endIndex);
                paragraph = paragraph.replace("*tab"+padding+"*", "<span style='padding: "+ padding + "px;'/>");
            }
        }
        if(paragraph.contains("/title")){
            while(paragraph.contains("/title")){
                try {
                    int startIndex = paragraph.indexOf("/title");
                    int endIndex = paragraph.indexOf("/title", startIndex+6)+6;
                    String text = paragraph.substring(startIndex, endIndex);
                    paragraph = paragraph.replaceFirst(text, formatTitle(text));
                }catch(Exception e){
                    e.getMessage();
                }
            }
        }
        if(paragraph.contains("/st")){
            while(paragraph.contains("/st")){
                int startIndex = paragraph.indexOf("/st");
                int endIndex = paragraph.indexOf("/st", startIndex + 3) + 3;
                String text = paragraph.substring(startIndex, endIndex);
                paragraph = paragraph.replaceFirst(text, formatSubtitle(text));

            }
        }
        if(paragraph.contains("/bullets")){
            while (paragraph.contains("/bullets")) {
                try {
                    int startIndex = paragraph.indexOf("/bullets")+ 8;
                    int endIndex = paragraph.indexOf("/bullets", startIndex+8);
                    endIndex = endIndex == -1 ? paragraph.length() : endIndex;
                    String text = paragraph.substring(startIndex, endIndex);
                    paragraph = paragraph.replaceFirst("/bullets", "<table class='bullet-list'>");
                    paragraph = paragraph.replaceFirst("/bullets", "</table>");
                    paragraph = paragraph.replace(text, formatBulletList(text));
                }catch(Exception e){
                    e.getMessage();
                }
            }
        }
        if(paragraph.contains("/b")) {
            while (paragraph.contains("/b")) {
                try {
                    int startIndex = paragraph.indexOf("/b");
                    int endIndex = paragraph.indexOf("/b", startIndex + 2) + 2;
                    String text = paragraph.substring(startIndex, endIndex);
                    paragraph = paragraph.replaceFirst(text, boldText(text));
                }catch(Exception e){
                    e.getMessage();
                }
            }
        }
        if(paragraph.contains("/n")) {
            try {
                while (paragraph.contains("/n")) {
                    int startIndex = paragraph.indexOf("/n");
                    int endIndex = paragraph.indexOf("/n", startIndex + 2);
                    endIndex = endIndex == -1 ? paragraph.length() : endIndex;
                    String text = paragraph.substring(startIndex, endIndex);
                    paragraph = paragraph.replace(text, newLine(text));
                }
            }catch(Exception e){
                e.getMessage();
            }
        }
        return paragraph;
    }

    public static String formatTitle(String text) {
        text = newLine(text);
        text = text.replace("/title", "");
        text = "<span class='paragraph-title'>" + text + "</span>";
        text = newLine(text);
        return text;
    }

    public static String formatSubtitle(String text) {
        text = newLine(text);
        text = text.replace("/st", "");
        text = "<span class='paragraph-subtitle'>" + text + "</span>";
        text = newLine(text);
        return text;
    }

    public static String newLine(String text){
        text = text.replace("/n", "<span class='indent'/>");
        return  "<tr><td><span class='spell-line'>   " + text + "</span></td></tr>";
    }

    public static String formatBulletList(String list){
        String[] bullets = list.split("/bt");
        list = list.replace("/bt", "");
        for(String bullet: bullets){
            list = list.replace(bullet, "<tr><td>" + bullet + "</td></tr>");
        }
        return list;
    }

    public static String boldText(String text){
        try{
            text = text.replace("/b", "");
            return "<span class='text-bold'>"+ text + "</span>";
        }catch(Exception e){
            e.getMessage();
        }
        return null;
    }
}
